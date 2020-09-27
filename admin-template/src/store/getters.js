const getters = {
  sidebar: state => state.app.sidebar,
  device: state => state.app.device,
  token: state => state.user.token,
  avatar: state => state.user.avatar,
  name: state => state.user.name,
  userDetailInfo: state => state.user.userDetailInfo,
  sysInfo: state => state.user.sysInfo,
  sysViewsCount: state => state.user.sysViewsCount

}
export default getters
