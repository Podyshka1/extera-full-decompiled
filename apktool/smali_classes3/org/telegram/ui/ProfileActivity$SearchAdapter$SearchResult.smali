.class public Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity$SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchResult"
.end annotation


# instance fields
.field public guid:I

.field public iconResId:I

.field public link:Ljava/lang/String;

.field public num:I

.field public openRunnable:Ljava/lang/Runnable;

.field public path:[Ljava/lang/String;

.field public rowName:Ljava/lang/String;

.field public searchTitle:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity$SearchAdapter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v7, p4

    move-object v8, p5

    .line 14850
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move v7, p5

    move-object v8, p6

    .line 14854
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 9

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 14858
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 0

    .line 14861
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->this$0:Lorg/telegram/ui/ProfileActivity$SearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14862
    iput p2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->guid:I

    .line 14863
    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->searchTitle:Ljava/lang/String;

    .line 14864
    iput-object p4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->rowName:Ljava/lang/String;

    .line 14865
    iput-object p8, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->openRunnable:Ljava/lang/Runnable;

    .line 14866
    iput p7, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->iconResId:I

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 14868
    filled-new-array {p5, p6}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->path:[Ljava/lang/String;

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 14870
    filled-new-array {p5}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->path:[Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 14881
    instance-of v0, p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 14884
    :cond_0
    check-cast p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    .line 14885
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->guid:I

    iget p1, p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->guid:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public open(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 1

    .line 14898
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->openRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 14899
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->rowName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->scrollToFragmentRow(Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 14890
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 14891
    iget v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->num:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v1, 0x1

    .line 14892
    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 14893
    iget v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->guid:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 14894
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;
    .locals 0

    .line 14875
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->link:Ljava/lang/String;

    return-object p0
.end method
