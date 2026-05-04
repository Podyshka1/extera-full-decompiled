.class public final synthetic Lorg/telegram/ui/CacheChatsExceptionsFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/CacheChatsExceptionsFragment;

.field public final synthetic f$1:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/CacheChatsExceptionsFragment;Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/CacheChatsExceptionsFragment;

    iput-object p2, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/ui/DialogsActivity;

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
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/CacheChatsExceptionsFragment;

    iget-object v1, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/ui/DialogsActivity;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/CacheChatsExceptionsFragment;->$r8$lambda$skueoPaSy9I5-ZeqocSySRQTnjU(Lorg/telegram/ui/CacheChatsExceptionsFragment;Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z

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
