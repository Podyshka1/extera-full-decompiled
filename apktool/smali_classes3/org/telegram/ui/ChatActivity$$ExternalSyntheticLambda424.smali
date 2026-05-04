.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda424;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ReactedUsersListView$OnHeightChangedListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;[I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda424;->f$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda424;->f$1:[I

    return-void
.end method


# virtual methods
.method public final onHeightChanged(Lorg/telegram/ui/Components/ReactedUsersListView;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda424;->f$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda424;->f$1:[I

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$Ep7mqZG2lSYUbDOfQE6B216piMc(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;[ILorg/telegram/ui/Components/ReactedUsersListView;I)V

    return-void
.end method
