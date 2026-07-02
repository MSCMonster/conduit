/// 特化版内置默认服务器配置。
///
/// 服务器地址通过编译期环境变量注入（`--dart-define` 或
/// `--dart-define-from-file=dart_defines.json`），不硬编码进仓库，
/// 避免把私有服务器地址提交到 git（见 `.gitignore` 中的 `dart_defines.json`）。
///
/// 若未注入（[kDefaultServerUrl] 为空字符串），app 退回到原有的
/// “手动输入服务器地址” onboarding 流程，行为与上游一致。
library;

/// 内置默认服务器地址；为空表示不启用内置服务器。
const String kDefaultServerUrl = String.fromEnvironment('DEFAULT_SERVER_URL');

/// 内置默认服务器在应用内显示的名称。
const String kDefaultServerName = String.fromEnvironment(
  'DEFAULT_SERVER_NAME',
  defaultValue: 'Open WebUI',
);
