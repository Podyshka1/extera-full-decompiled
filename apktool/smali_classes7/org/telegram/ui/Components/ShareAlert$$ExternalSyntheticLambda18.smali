.class public final synthetic Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda18;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda18;->f$0:Z

    check-cast p1, Lorg/telegram/ui/Components/BulletinFactory;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ShareAlert;->$r8$lambda$4nCFr4Ea_8NmLqeAafRfVmXzm24(ZLorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method
