.class public interface abstract Lorg/telegram/ui/Components/MentionsContainerView$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MentionsContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract addEmojiToRecent(Ljava/lang/String;)V
.end method

.method public abstract getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;
.end method

.method public abstract onStickerSelected(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract replaceText(IILjava/lang/CharSequence;Z)V
.end method

.method public abstract sendBotInlineResult(Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZI)V
.end method
