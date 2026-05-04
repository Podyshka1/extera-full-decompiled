.class Lorg/telegram/ui/Components/AlertsCreator$19;
.super Lorg/telegram/ui/Components/CodepointsLengthInputFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createChangeBioAlert(Ljava/lang/String;JLandroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$checkTextView:Lorg/telegram/ui/Components/NumberTextView;


# direct methods
.method constructor <init>(ILorg/telegram/ui/Components/NumberTextView;)V
    .locals 0

    .line 2953
    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$19;->val$checkTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CodepointsLengthInputFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 2956
    invoke-super/range {p0 .. p6}, Lorg/telegram/ui/Components/CodepointsLengthInputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p2

    move-object p3, p1

    move-object p1, p0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 2957
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-eq p4, p3, :cond_0

    .line 2958
    invoke-static {}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->vibrate()V

    .line 2959
    iget-object p3, p1, Lorg/telegram/ui/Components/AlertsCreator$19;->val$checkTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    :cond_0
    return-object p2
.end method
