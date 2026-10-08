@~/.codex/RTK.md

@~/.codex/SEMBLE.md

@~/.codex/GRAFT.md

- Do not preserve backward compatibility. Remove obsolete paths instead of
  adding compatibility layers, fallbacks, or migrations.
- Choose the simplest implementation that fully meets the current requirements.
  Avoid speculative abstractions, configuration, and indirection.
- Grow the system in layers. Start from the smallest version that works end to
  end, and add each new capability on top of a product that already works. Never
  trade a working product for unfinished complexity.
- Keep components modular and concerns clearly separated.
- Prefer established, well-maintained libraries when they reduce overall
  complexity or improve reliability. Do not reimplement common functionality
  without a clear reason.
- Lean on the dependencies already in the project before writing your own
  implementation or adding packages. Do not assume a library lacks a capability
  without checking its documentation and types.
- Make architectural decisions for the long term. Do not accept a stopgap that
  only works for now and is meant to be replaced later.

## Tool preferences

### Web research

- Prefer `@Exa` for technical or in-depth research: documentation, source
  repositories, implementation examples, undocumented behavior, debugging,
  compatibility, upgrades, and questions requiring cross-checking sources.
- Prefer native web search for simple facts, news, or locating a known
  official page.
- With `@Exa`, describe the source or evidence sought in a semantic query.
  Use multiple focused searches when the question has distinct parts.
- Prefer primary sources. Read the relevant pages before drawing conclusions;
  search snippets alone are insufficient for non-trivial research.

### Web QA

- Use `@Browser` for interaction with a running frontend and validation of its
  appearance or user flows. Use research tools for documentation and lookups.
- If `@Browser` cannot perform a required action, explain the specific
  limitation before using another tool.
- Use Playwright, Puppeteer, Selenium, or browser automation scripts only when
  I explicitly request them.

### React Native QA

- Use `agent-device` for interaction with a running app. Its navigation,
  inputs, screenshots, and observed behavior are the source of truth for
  visual validation, user-flow testing, bug reproduction, and fix verification.
- First check through `agent-device` that the intended device or simulator is
  available and the app is running or launchable. Reuse the running simulator;
  if needed, start or select the intended simulator with the minimum action,
  then continue through `agent-device`.
- If `agent-device` cannot perform a required action, explain the specific
  limitation. Use another interaction method only when I explicitly request it.
  This includes browser tools, Appium, Detox, Maestro, XCUITest, Espresso,
  Xcode UI, `simctl` navigation, shell commands, and custom automation scripts.
- Use code and research tools for implementation, static review, and
  documentation that require no interaction with the running app.

## Orchestrator

For complex coding tasks, use the `orchestrate` skill when its trigger
conditions match.

The root agent owns architecture, decomposition, integration, and final
verification. Prefer specialized subagents for bounded exploration,
implementation, testing, review, and technical research.

Do not delegate trivial work merely for parallelism. Do not let multiple
implementation agents edit the same files without explicit ownership boundaries.
User instructions always take precedence over this orchestration policy.

## Output style

The reader has ADHD. Shape every response so it can be acted on:

1. Lead with the answer or next action: command, path, or snippet first.
2. Number multi-step work; one bounded action per step.
3. End with one next action doable in under two minutes.
4. Finish the current issue before raising a new one.
5. Restate progress each turn ("step 3 of 5 done").
6. Give time estimates in concrete units, never "a bit".
7. After a change, show what now works.
8. Errors: state location, cause, and fix. No drama.
9. Cap lists to 5 items.
10. No preamble, no recaps, no closers.

Exceptions: explain fully when asked to explain. Confirm before destructive
actions. After three failed fixes, stop and name the doubtful assumption. If the
request is ambiguous, ask one short question.
