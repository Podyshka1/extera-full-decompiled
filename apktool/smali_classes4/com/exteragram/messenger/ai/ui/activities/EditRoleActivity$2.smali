.class Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$2;
.super Lorg/telegram/ui/Components/CodepointsLengthInputFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;I)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$2;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/CodepointsLengthInputFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 124
    invoke-super/range {p0 .. p6}, Lorg/telegram/ui/Components/CodepointsLengthInputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p2

    move-object p3, p1

    move-object p1, p0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 125
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-eq p4, p3, :cond_0

    .line 126
    iget-object p3, p1, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$2;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;

    invoke-static {p3}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->-$$Nest$fgetnameFieldContainer(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)Lorg/telegram/ui/Components/OutlineTextContainerView;

    move-result-object p3

    const/4 p4, 0x3

    const/4 p5, 0x2

    invoke-virtual {p3, p4, p5}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 127
    iget-object p3, p1, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$2;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;

    invoke-static {p3}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->-$$Nest$fgetnameFieldContainer(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)Lorg/telegram/ui/Components/OutlineTextContainerView;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    :cond_0
    return-object p2
.end method
