.class public interface abstract Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PluginsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PluginsEngine"
.end annotation


# virtual methods
.method public abstract canOpenInExternalApp()Z
.end method

.method public abstract checkDevServer()V
.end method

.method public abstract clearPluginSettings(Ljava/lang/String;)V
.end method

.method public abstract deletePlugin(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract executeOnAppEvent(Ljava/lang/String;)V
.end method

.method public abstract executePostRequestHook(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/tgnet/TLObject;",
            "Lorg/telegram/tgnet/TLRPC$TL_error;",
            "Ljava/lang/String;",
            ")",
            "Lcom/exteragram/messenger/plugins/PluginsController$HookResult<",
            "Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract executePreRequestHook(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/tgnet/TLObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/exteragram/messenger/plugins/PluginsController$HookResult<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract executeSendMessageHook(ILorg/telegram/messenger/SendMessagesHelper$SendMessageParams;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;",
            "Ljava/lang/String;",
            ")",
            "Lcom/exteragram/messenger/plugins/PluginsController$HookResult<",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;",
            ">;"
        }
    .end annotation
.end method

.method public abstract executeUpdateHook(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Update;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            "Ljava/lang/String;",
            ")",
            "Lcom/exteragram/messenger/plugins/PluginsController$HookResult<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;"
        }
    .end annotation
.end method

.method public abstract executeUpdatesHook(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            "Ljava/lang/String;",
            ")",
            "Lcom/exteragram/messenger/plugins/PluginsController$HookResult<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPluginSettings(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getPluginPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract init(Ljava/lang/Runnable;)V
.end method

.method public abstract isEngineAvailable()Z
.end method

.method public abstract isPlugin(Ljava/io/File;Lorg/telegram/messenger/MessageObject;)Z
.end method

.method public abstract loadPluginSettings(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/models/SettingItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract openInExternalApp(Ljava/lang/String;)V
.end method

.method public abstract openPluginSetting(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end method

.method public abstract openPluginSetting(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end method

.method public abstract openPluginSettings(Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end method

.method public abstract openPluginSettings(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end method

.method public abstract setPluginEnabled(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract sharePlugin(Ljava/lang/String;)V
.end method

.method public abstract showInstallDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V
.end method

.method public abstract shutdown(Ljava/lang/Runnable;)V
.end method
