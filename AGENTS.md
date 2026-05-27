# AGENTS.md

## Stack

- Rails 8.1, Ruby 3.4.1
- SQLite3 for all environments
- Hotwire (Turbo + Stimulus) via turbo-rails and stimulus-rails
- Propshaft for asset pipeline, importmap-rails for JS
- Minitest (default Rails test framework), Capybara + Selenium for system tests
- No background jobs beyond solid_queue (unused so far)

## Commands

- Setup: `bin/setup`
- Dev server: `bin/dev`
- Run all tests: `bin/rails test`
- Run system tests: `bin/rails test:system`
- Lint: `bin/rubocop`
- Security scan: `bin/brakeman --no-pager`

## Conventions

- One resource so far: `Todo` (description, due_date)
- Controllers respond to HTML and JSON via `respond_to` blocks
- Strong parameters via `params.expect`
- Shared partials live in `app/views/<resource>/` prefixed with underscore
- Standard RESTful routes, no nested resources yet
- Fixtures for test data, no factories

## Don'ts

- No new gems without explicit approval
- No inline JavaScript in ERB -- use Stimulus controllers instead
- No `skip_before_action :verify_authenticity_token`
- Do not seed real user data, use `db/seeds.rb` with fake/sample data only
- Do not disable mass assignment protection or use `permit!`
