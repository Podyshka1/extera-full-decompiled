.class public final synthetic Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer$18;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer$18;Ljava/util/ArrayList;ZLorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/PhotoViewer$18;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda14;->f$1:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda14;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda14;->f$3:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public synthetic canSelectStories()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate$-CC;->$default$canSelectStories(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)Z

    move-result v0

    return v0
.end method

.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z
    .locals 12

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/PhotoViewer$18;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda14;->f$1:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda14;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda14;->f$3:Lorg/telegram/ui/ChatActivity;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer$18;->$r8$lambda$MK0Q8uaOgPyRf7tuud0VT9wx-iQ(Lorg/telegram/ui/PhotoViewer$18;Ljava/util/ArrayList;ZLorg/telegram/ui/ChatActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z

    move-result p1

    return p1
.end method

.method public synthetic didSelectStories(Lorg/telegram/ui/DialogsActivity;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate$-CC;->$default$didSelectStories(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    return p1
.end method
