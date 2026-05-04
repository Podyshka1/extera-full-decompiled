.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda179;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_fragment$TL_collectibleInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/tl/TL_fragment$TL_collectibleInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda179;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda179;->f$1:Lorg/telegram/tgnet/tl/TL_fragment$TL_collectibleInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda179;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda179;->f$1:Lorg/telegram/tgnet/tl/TL_fragment$TL_collectibleInfo;

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$CdOdHpa7hHXwOOrTrDlBPSmZkAs(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/tl/TL_fragment$TL_collectibleInfo;)V

    return-void
.end method
