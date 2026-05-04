.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:[Lorg/telegram/messenger/LocaleController$LocaleInfo;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;[Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda41;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda41;->f$1:[Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda41;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda41;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda41;->f$1:[Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda41;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$1F6ZFcoGG3VP6Q-9GKUD3r7iJaY(Lorg/telegram/ui/LaunchActivity;[Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
