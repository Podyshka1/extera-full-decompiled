.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda468;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Cells/CheckBoxCell;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Cells/CheckBoxCell;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda468;->f$0:Lorg/telegram/ui/Cells/CheckBoxCell;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda468;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda468;->f$0:Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda468;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$7iC2wws4k4sHbU6aALgPuA1o6jQ(Lorg/telegram/ui/Cells/CheckBoxCell;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View;)V

    return-void
.end method
