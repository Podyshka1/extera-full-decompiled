.class public final synthetic Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$3:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda51;->f$0:I

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda51;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda51;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda51;->f$3:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda51;->f$0:I

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda51;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda51;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda51;->f$3:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->$r8$lambda$a7iJeVvju5MfqbnnbMYsxZ_jlJQ(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    return-void
.end method
