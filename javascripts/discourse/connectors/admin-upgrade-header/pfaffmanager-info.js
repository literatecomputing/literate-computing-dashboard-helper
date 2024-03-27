import Component from "@glimmer/component";
export default class AboutTextComponent extends Component {
  get haveDashboard() {
    return settings.include_dashboard_link
  }
}
