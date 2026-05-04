.class public interface abstract Lcom/exteragram/messenger/plugins/hooks/PluginsHooks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;
    }
.end annotation


# virtual methods
.method public abstract executePostRequestHook(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;
.end method

.method public abstract executePreRequestHook(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLObject;
.end method

.method public abstract executeSendMessageHook(ILorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
.end method

.method public abstract executeUpdateHook(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Update;)Lorg/telegram/tgnet/TLRPC$Update;
.end method

.method public abstract executeUpdatesHook(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Updates;)Lorg/telegram/tgnet/TLRPC$Updates;
.end method
