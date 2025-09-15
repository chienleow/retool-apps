<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="58fc11b5-d3d5-4375-a41f-0cd28739843e"
>
  <RetoolAIQuery
    id="llmChat1_query1"
    action="chatResponseGeneration"
    chatHistory="{{ llmChat1.messageHistory }}"
    chatInput="{{ llmChat1.lastMessage }}"
    defaultModelInitialized={true}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
  />
  <RetoolAIQuery
    id="llmChat2_query1"
    action="chatResponseGeneration"
    chatHistory="{{ llmChat2.messageHistory }}"
    chatInput="{{ llmChat2.lastMessage }}"
    defaultModelInitialized={true}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
  />
  <JavascriptQuery
    id="query1"
    actionType=""
    bulkUpdatePrimaryKey=""
    dataArray={[]}
    databaseHostOverride=""
    databaseNameOverride=""
    databasePasswordOverride=""
    databaseRoleOverride=""
    databaseUsernameOverride=""
    databaseWarehouseOverride=""
    doNotThrowOnNoOp={false}
    editorMode="sql"
    enableBulkUpdates={false}
    filterBy=""
    recordId=""
    records=""
    resourceName="JavascriptQuery"
    resourceTypeOverride=""
    runWhenModelUpdates={true}
    shouldEnableBatchQuerying={false}
    shouldUseLegacySql={false}
    tableName=""
  >
    <Event
      event="success"
      method="trigger"
      params={{
        map: {
          options: { onSuccess: null, onFailure: null, additionalScope: null },
        },
      }}
      pluginId="clearHistory"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <JavascriptQuery
    id="clearHistory"
    notificationDuration={4.5}
    query={include("../lib/clearHistory.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Chat
      id="llmChat2"
      _actionDisabled={{ map: { "1a": "" } }}
      _actionHidden={{ map: { "1a": "" } }}
      _actionIcon={{ map: { "1a": "line/interface-align-front" } }}
      _actionIds={["1a"]}
      _actionLabel={{ map: { "1a": "Copy" } }}
      _actionType={{ map: { "1a": "copy" } }}
      _defaultUsername="{{ current_user.fullName }}"
      _headerButtonHidden={{ "2b": "", "3c": "" }}
      _headerButtonIcon={{
        "2b": "line/interface-download-button-2",
        "3c": "line/interface-delete-bin-2",
      }}
      _headerButtonIds={["2b", "3c"]}
      _headerButtonLabel={{ "2b": "Download", "3c": "Clear history" }}
      _headerButtonType={{ "2b": "download", "3c": "clearHistory" }}
      _sessionStorageId="19995b79-a51f-4a6d-8d6a-1319c653e49e"
      assistantName="Retool AI"
      avatarFallback="{{ current_user.fullName }}"
      avatarImageSize={32}
      avatarSrc="{{ current_user.profilePhotoUrl }}"
      emptyDescription="Send a message to chat with AI"
      emptyTitle="No messages here yet"
      placeholder="Type a message"
      queryTargetId="llmChat2_query1"
      showAvatar={true}
      showEmptyState={true}
      showHeader={true}
      showTimestamp={true}
      style={{ map: { background: "automatic" } }}
      title="Chat"
    >
      <Event
        event="submit"
        method="trigger"
        params={{}}
        pluginId="query1"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickAction"
        method="copyToClipboard"
        params={{ map: { value: "{{ currentMessage.value }}" } }}
        pluginId="llmChat2"
        targetId="1a"
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickHeader"
        method="exportData"
        pluginId="llmChat2"
        targetId="2b"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickHeader"
        method="clearHistory"
        pluginId="llmChat2"
        targetId="3c"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Chat>
    <Image
      id="image1"
      heightType="fixed"
      horizontalAlign="center"
      src="https://picsum.photos/id/1025/800/600"
    />
  </Frame>
</Screen>
