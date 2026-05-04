.class Lorg/telegram/ui/ContactsActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Bulletin$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 993
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$7;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic allowLayoutChanges()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$allowLayoutChanges(Lorg/telegram/ui/Components/Bulletin$Delegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic bottomOffsetAnimated()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$bottomOffsetAnimated(Lorg/telegram/ui/Components/Bulletin$Delegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic clipWithGradient(I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$clipWithGradient(Lorg/telegram/ui/Components/Bulletin$Delegate;I)Z

    move-result p1

    return p1
.end method

.method public getBottomOffset(I)I
    .locals 1

    .line 1002
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$7;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/ContactsActivity;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$7;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetadditionFloatingButtonOffset(Lorg/telegram/ui/ContactsActivity;)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public synthetic getTopOffset(I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$getTopOffset(Lorg/telegram/ui/Components/Bulletin$Delegate;I)I

    move-result p1

    return p1
.end method

.method public onBottomOffsetChange(F)V
    .locals 2

    .line 996
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$7;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/ContactsActivity;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$7;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetadditionFloatingButtonOffset(Lorg/telegram/ui/ContactsActivity;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fputadditionalFloatingTranslation(Lorg/telegram/ui/ContactsActivity;F)V

    .line 997
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$7;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$mcheckUi_floatingButtonPosition(Lorg/telegram/ui/ContactsActivity;)V

    return-void
.end method

.method public synthetic onHide(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onHide(Lorg/telegram/ui/Components/Bulletin$Delegate;Lorg/telegram/ui/Components/Bulletin;)V

    return-void
.end method

.method public synthetic onShow(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onShow(Lorg/telegram/ui/Components/Bulletin$Delegate;Lorg/telegram/ui/Components/Bulletin;)V

    return-void
.end method
