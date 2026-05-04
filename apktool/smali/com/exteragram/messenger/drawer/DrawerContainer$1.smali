.class Lcom/exteragram/messenger/drawer/DrawerContainer$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/drawer/DrawerContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/exteragram/messenger/drawer/DrawerContainer;)F
    .locals 0

    .line 123
    invoke-static {p1}, Lcom/exteragram/messenger/drawer/DrawerContainer;->-$$Nest$mgetDrawerOffset(Lcom/exteragram/messenger/drawer/DrawerContainer;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 120
    check-cast p1, Lcom/exteragram/messenger/drawer/DrawerContainer;

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/drawer/DrawerContainer$1;->getValue(Lcom/exteragram/messenger/drawer/DrawerContainer;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/exteragram/messenger/drawer/DrawerContainer;F)V
    .locals 0

    .line 128
    invoke-static {p1, p2}, Lcom/exteragram/messenger/drawer/DrawerContainer;->-$$Nest$msetDrawerOffset(Lcom/exteragram/messenger/drawer/DrawerContainer;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 120
    check-cast p1, Lcom/exteragram/messenger/drawer/DrawerContainer;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/drawer/DrawerContainer$1;->setValue(Lcom/exteragram/messenger/drawer/DrawerContainer;F)V

    return-void
.end method
