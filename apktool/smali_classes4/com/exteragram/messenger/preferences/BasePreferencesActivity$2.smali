.class Lcom/exteragram/messenger/preferences/BasePreferencesActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Bulletin$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/preferences/BasePreferencesActivity;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity$2;->this$0:Lcom/exteragram/messenger/preferences/BasePreferencesActivity;

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
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity$2;->this$0:Lcom/exteragram/messenger/preferences/BasePreferencesActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBottomInset()I

    move-result p1

    return p1
.end method

.method public getTopOffset(I)I
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity$2;->this$0:Lcom/exteragram/messenger/preferences/BasePreferencesActivity;

    invoke-virtual {p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->hasHeaderCell()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic onBottomOffsetChange(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onBottomOffsetChange(Lorg/telegram/ui/Components/Bulletin$Delegate;F)V

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
