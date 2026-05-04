.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda79;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda79;->f$0:I

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda79;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda79;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda79;->f$0:I

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda79;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda79;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$0Hn_dADsNryd1nIxxSFosDY7qT4(ILjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
