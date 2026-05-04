.class public interface abstract Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/utils/text/TranslatorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TranslateCallback"
.end annotation


# virtual methods
.method public abstract onFailed()V
.end method

.method public abstract onReqId(I)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end method

.method public abstract onSuccess(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
.end method
