.class Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Bulletin$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Bulletin$BulletinWindow;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Bulletin$Delegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Bulletin$BulletinWindow;

.field final synthetic val$delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;Lorg/telegram/ui/Components/Bulletin$Delegate;)V
    .locals 0

    .line 2457
    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;->this$0:Lorg/telegram/ui/Components/Bulletin$BulletinWindow;

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;->val$delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

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

.method public clipWithGradient(I)Z
    .locals 1

    .line 2470
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;->val$delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate;->clipWithGradient(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBottomOffset(I)I
    .locals 1

    .line 2460
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;->val$delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate;->getBottomOffset(I)I

    move-result p1

    return p1
.end method

.method public getTopOffset(I)I
    .locals 1

    .line 2465
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;->val$delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-nez v0, :cond_0

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate;->getTopOffset(I)I

    move-result p1

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
