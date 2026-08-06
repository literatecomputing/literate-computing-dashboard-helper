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

  <template>
    {{#if this.haveDashboard}}
      <div class="lc-dashboard">
        <h2>Literate Computing Dashboard</h2>

        <p>This site is, or has been, managed or installed by the
          <a
            rel="noopener noreferrer"
            target="_blank"
            href={{this.dashboardUrl}}
          >Literate Computing Dashboard</a>. You can use the dashboard to do
          command line rebuilds, add or remove plugins, and more. The Dashboard
          runs the same commands as recommended for a standard install (like
          <code>./launcher rebuild app</code>), but also does some things you
          might forget, like restarting the existing container if the rebuild
          fails, managing Postgres upgrades and so on.</p>
        <p>If a Critical Update is available, sometimes a command line upgrade
          is required and the dashboard can manage that for you with just a few
          clicks.</p>
      </div>
    {{/if}}
  </template>
}
