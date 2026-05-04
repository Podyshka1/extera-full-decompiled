.class public final synthetic Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ChatThemeController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$ChatFull;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/ChatThemeController;

    iput-object p2, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/ChatThemeController;

    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatThemeController;->$r8$lambda$QUzV-3-vCFENvtAWpiFT0VyTgZg(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    return-void
.end method
