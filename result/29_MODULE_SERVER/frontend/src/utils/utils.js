import axios from "axios";

export const post = async (url, body, token) => {
  let data, errors;

  try {
    const res = await axios.post("http://localhost:8000/api/v1" + url, body, {
      headers: {
        Authorization: "Bearer " + token,
      },
    });
    data = res.data;
  } catch (err) {
    if (err?.response) {
      errors = err.response.data;
    } else {
      errors = err;
    }
  }
  return { data, errors };
};
export const get = async (url, token) => {
  let data, errors;
  console.log(`Bearer ${token}`);
  try {
    const res = await axios.get("http://localhost:8000/api/v1" + url, {
      headers: {
        Authorization: `Bearer ${token}`,
      },
    });
    data = res.data;
  } catch (err) {
    if (err?.response) {
      errors = err.response.data;
    } else {
      errors = err;
    }
  }
  return { data, errors };
};
