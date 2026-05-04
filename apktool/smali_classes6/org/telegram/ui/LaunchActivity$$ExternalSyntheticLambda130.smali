.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda130;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$2:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda130;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda130;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda130;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda130;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda130;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda130;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$rFWuggxQ8HX8M191NwQI6BP_cRM(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
