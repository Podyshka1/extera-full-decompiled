.class Lorg/telegram/ui/Components/AlertsCreator$61;
.super Lorg/telegram/ui/Components/CodepointsLengthInputFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->showDeclineSuggestedPostDialog(Lorg/telegram/ui/ActionBar/BaseFragment;JZLorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 8225
    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$61;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CodepointsLengthInputFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 8228
    invoke-super/range {p0 .. p6}, Lorg/telegram/ui/Components/CodepointsLengthInputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p2

    move-object p3, p1

    move-object p1, p0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 8229
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-eq p4, p3, :cond_0

    .line 8230
    iget-object p3, p1, Lorg/telegram/ui/Components/AlertsCreator$61;->val$context:Landroid/content/Context;

    const-string p4, "vibrator"

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Vibrator;

    if-eqz p3, :cond_0

    const-wide/16 p4, 0xc8

    .line 8232
    invoke-virtual {p3, p4, p5}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-object p2
.end method
