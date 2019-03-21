export default function({ $axios }) {
  $axios.onRequest((config) => {
    return config
  })
}

