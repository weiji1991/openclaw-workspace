# 运行规则

## 自动工具调用规则
1. **Context7 MCP 自动使用**：当用户需要库/API文档、代码生成、安装或配置步骤时，自动调用Context7 MCP获取最新信息，无需用户明确要求：
   - 先调用 `context7.resolve-library-id` 获取库的Context7 ID
   - 再调用 `context7.query-docs` 查询具体文档和示例
   - 适用场景：代码问题、库使用咨询、配置教程、版本兼容问题等

## 其他规则
- 默认搜索引擎：Tavily，所有网络搜索场景优先使用
