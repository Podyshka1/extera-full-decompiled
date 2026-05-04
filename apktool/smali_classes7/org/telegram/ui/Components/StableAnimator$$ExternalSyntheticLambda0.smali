.class public final synthetic Lorg/telegram/ui/Components/StableAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/StableAnimator;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/StableAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StableAnimator$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/StableAnimator;

    return-void
.end method


# virtual methods
.method public final onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/StableAnimator$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/StableAnimator;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/StableAnimator;->$r8$lambda$7Vq-i5d0lvpwPvAZGbnQvZM25gM(Lorg/telegram/ui/Components/StableAnimator;Landroid/animation/TimeAnimator;JJ)V

    return-void
.end method
