// ##############################
async function is_email_available() {
  const frm = event.target.form
  const conn = await fetch("api/api-is-email-available.php", {
    method: "POST",
    body: new FormData(frm)
  })
  if (!conn.ok) { // everything that is not a 2xx
    console.log("email not available")
    document.querySelector("#msg_email_not_available").classList.remove("hidden")
    return
  }
  console.log("email available")
}



// ##############################
async function admin_delete_user() {
  const frm = event.target
  console.log(frm)
  const conn = await fetch("api/api-admin-delete-user.php", {
    method: "POST",
    body: new FormData(frm)
  })
  const response = await conn.json()
  console.log(response)
  frm.parentElement.remove()
}


// ##############################
async function delete_user() {
  const frm = event.target;
  console.log(frm);

  const conn = await fetch("api/api-delete-user.php", {
    method: "POST",
    body: new FormData(frm)
  });

  if (conn.status === 204) {
    // Redirect to the front page after successful deletion
    window.location.href = "/logout"; 
  } else {
    try {
      const response = await conn.json();
      console.log(response);
      // Handle other responses or errors here
    } catch (error) {
      console.error("Error parsing JSON:", error);
      // Handle JSON parsing error here
    }
  }
}



// ##############################
async function update_user() {
  // alert('x');
  const frm = event.target;
  console.log(frm);

  const conn = await fetch('api/api-update-user.php', {
      method: 'POST',
      body: new FormData(frm)
  })
}



// ##############################
async function toggle_blocked(user_id) {
  try {
    const button = document.querySelector(`button[data-user-id="${user_id}"]`);
    const currentBlockedStatus = button.getAttribute('data-user-is-blocked');
    const newBlockedStatus = currentBlockedStatus === '0' ? '1' : '0';

    const conn = await fetch(`api/api-toggle-user-blocked.php?user_id=${user_id}&user_is_blocked=${newBlockedStatus}`);
    if (conn.ok) {
      button.setAttribute('data-user-is-blocked', newBlockedStatus);
      button.innerHTML = newBlockedStatus === '0' ? "🟢" : "🔴";
      console.log('User status updated succesfully');
    } else {
      console.log('Failed to update user status');
    }
  } catch (error) {
    console.error('Error updating user status:', error);
  }
}


// ##############################
async function signup() {
  const frm = event.target
  console.log(frm)
  const conn = await fetch("/api/api-signup.php", {
    method: "POST",
    body: new FormData(frm)
  })

  const data = await conn.text()
  console.log(data)


  if (!conn.ok) {
    Swal.fire({
      icon: 'error',
      title: 'Oops...',
      text: 'Something went wrong!',
      footer: '<a href="">Why do I have this issue?</a>'
    })
    return
  }

  // TODO: redirect to the login page
  location.href = "/login"

}

// ##############################
async function search_users(){
    const frm = document.querySelector("#frm_search")
    const url = frm.getAttribute('data-url')
    console.log("URL: ", url)
    const conn = await fetch(`/api/${url}`, {
      method : "POST",
      body : new FormData(frm)
    })

    const data = await conn.json()
    document.querySelector("#query_results").innerHTML = ""
    
    data.forEach(user => {
      let div_user = `
        <div class="grid grid-cols-[100fr,100fr,50fr] p-2">
          <div class="">${user.user_id}</div>
          <div class="">${user.user_name}</div>
          <div class="">${user.user_last_name}</div>
        </div>
      `
      document.querySelector("#query_results").insertAdjacentHTML('afterbegin', div_user)
    })
}

// ##############################
async function search_orders(){
  const frm = document.querySelector("#frm_search")
  const url = frm.getAttribute('data-url')
  console.log("URL: ", url)
  const conn = await fetch(`/api/${url}`, {
    method : "POST",
    body : new FormData(frm)
  })

  // const data = await conn.json()
  // document.querySelector("#query_results").innerHTML = ""
  
  // data.forEach(order => {
  //   let div_user = `
  //     <div class="grid grid-cols-[100fr,100fr,50fr] p-2">
  //       <div class="">${order.order_id}</div>
  //       <div class="">${order.order_created_by_user_fk}</div>
  //       <div class="">${order.order_created_at}</div>
  //       <div class="">${order.order_delivered_at}</div>
  //     </div>
  //   `
  //   document.querySelector("#query_results").insertAdjacentHTML('afterbegin', div_order)
  // })
}
















