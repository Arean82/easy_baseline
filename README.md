# Easy Baseline v4

[![Redmine 7.0 Ready](https://img.shields.io/badge/Redmine-5.x%20%7C%206.x%20%7C%207.x-blue.svg)](https://www.redmine.org)
[![Ruby 3.x](https://img.shields.io/badge/Ruby-3.x%20%7C%204.x-red.svg)](https://www.ruby-lang.org)
[![License: GPL-2.0](https://img.shields.io/badge/License-GPL%202.0-yellow.svg)](https://opensource.org/licenses/GPL-2.0)

**Author:** Arean Narrayan ([@Arean82](https://github.com/Arean82))  
**Repository:** [https://github.com/Arean82/easy_baseline](https://github.com/Arean82/easy_baseline)  

Easy Baseline allows project managers and teams to freeze and snapshot a project's state in time (including issues, versions, dates, and progress), enabling clear comparison between original baselines and actual progress.

---

## 🚀 Key Features

* **Project Snapshots:** Create frozen baseline states of active projects with one click.
* **Preserved Planning Metrics:** Captures issue start dates, due dates, completion percentages, and milestone/version target dates.
* **Gantt & Timeline Comparison:** API endpoints to compare planned vs actual timelines in Gantt and reporting charts.
* **Full Redmine 7.x & Rails 7 Compatibility:** Fully modernized for Zeitwerk autoloading using safe `to_prepare` hook prepends.

---

## 📋 Compatibility

* **Redmine:** 5.0.x, 5.1.x, 6.0.x, and **Redmine 7.0.x**
* **Ruby:** 3.0, 3.1, 3.2, 3.3, 4.0
* Tested in production environments on Redmine 7.0.3

---

## 🛠️ Installation Instructions

> **Note:** Always run `bundle` and `rake` commands from the **Redmine root directory**, never from inside the plugin directory.

### 1. Clone the repository
Navigate to your Redmine `plugins` folder and clone the repository:

```bash
cd /data/redmine/plugins
git clone https://github.com/Arean82/easy_baseline.git
```

### 2. Configure Bundler & Dependencies
From your Redmine root directory:

```bash
cd /data/redmine
bundle config set --local without 'development test'
bundle install
```

### 3. Run Database Migrations
Run the plugin database migrations from the Redmine root directory:

```bash
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
```

### 4. Restart Redmine
Restart your Redmine application server (e.g., Puma, Passenger, or systemd):

```bash
sudo systemctl restart redmine
```

---

## 📖 Usage

1. Go to **Administration** → **Roles and permissions** and enable **Easy Baselines** permissions (`View baselines`, `Edit baselines`).
2. Open any project and go to the **Settings** → **Modules** tab to ensure **Easy Baselines** is enabled.
3. Access **Baselines** to create, view, or compare snapshots of your project.

---

## 📄 License

This plugin is available under the GNU General Public License v2 (GPL-2.0).
