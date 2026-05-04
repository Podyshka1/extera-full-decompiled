.class public final synthetic Lcom/exteragram/messenger/drawer/DrawerContainer$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/drawer/DrawerContainer$4;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/drawer/DrawerContainer$4;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$4$$ExternalSyntheticLambda0;->f$0:Lcom/exteragram/messenger/drawer/DrawerContainer$4;

    iput-object p2, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$4$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$4$$ExternalSyntheticLambda0;->f$0:Lcom/exteragram/messenger/drawer/DrawerContainer$4;

    iget-object v1, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$4$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/exteragram/messenger/drawer/DrawerContainer$4;->$r8$lambda$f2WQgGCTCp_WE6VVhblch0STt4c(Lcom/exteragram/messenger/drawer/DrawerContainer$4;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
