.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda62;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda62;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda62;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda62;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda62;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda62;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$H3kX2e3TK0QmrdGbgNgWIBcYcbs(Lorg/telegram/ui/LaunchActivity;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
