.class Lorg/telegram/ui/GradientHeaderActivity$2;
.super Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GradientHeaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GradientHeaderActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GradientHeaderActivity;IIII)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity$2;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method protected getThemeColorByKey(I)I
    .locals 0

    .line 71
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColor(I)I

    move-result p1

    return p1
.end method
