import Component from "@glimmer/component";
export default class AboutTextComponent extends Component {
  get dashboardUrl() {
    if (settings.dashboard_server_id > 0) {
      return `https://dashboard.literatecomputing.com/pfaffmanager/servers/${settings.dashboard_server_id}`;
    } else {
      return "https://dashboard.literatecomputing.com";
    }
  }
  get haveDashboard() {
    return settings.include_dashboard_link;
  }
}
