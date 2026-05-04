.class public final synthetic Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/NotificationCenter;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View$OnAttachStateChangeListener;

.field public final synthetic f$3:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/NotificationCenter;Landroid/view/View;Landroid/view/View$OnAttachStateChangeListener;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/NotificationCenter;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda10;->f$1:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda10;->f$2:Landroid/view/View$OnAttachStateChangeListener;

    iput-object p4, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda10;->f$3:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    iput p5, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda10;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/NotificationCenter;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda10;->f$1:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda10;->f$2:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v3, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda10;->f$3:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    iget v4, p0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda10;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->$r8$lambda$PRx7Py5ulpdjctmZSnFR7kO03c4(Lorg/telegram/messenger/NotificationCenter;Landroid/view/View;Landroid/view/View$OnAttachStateChangeListener;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method
