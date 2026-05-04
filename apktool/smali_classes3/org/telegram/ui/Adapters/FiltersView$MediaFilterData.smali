.class public Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/FiltersView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFilterData"
.end annotation


# instance fields
.field public chat:Lorg/telegram/tgnet/TLObject;

.field public dateData:Lorg/telegram/ui/Adapters/FiltersView$DateData;

.field public filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

.field public filterType:I

.field public iconResFilled:I

.field public reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public removable:Z

.field private title:Ljava/lang/String;

.field public titleResId:I


# direct methods
.method static bridge synthetic -$$Nest$fgettitle(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(IILorg/telegram/tgnet/TLRPC$MessagesFilter;I)V
    .locals 1

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 797
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    .line 811
    iput p1, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->iconResFilled:I

    .line 812
    iput p2, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->titleResId:I

    .line 813
    iput-object p3, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 814
    iput p4, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$MessagesFilter;I)V
    .locals 1

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 797
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    .line 804
    iput p1, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->iconResFilled:I

    .line 805
    iput-object p2, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->title:Ljava/lang/String;

    .line 806
    iput-object p3, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 807
    iput p4, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 818
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 821
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->titleResId:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMedia()Z
    .locals 3

    .line 839
    iget v0, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isSameType(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)Z
    .locals 3

    .line 829
    iget v0, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    iget v1, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 832
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->isMedia()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->isMedia()Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setDate(Lorg/telegram/ui/Adapters/FiltersView$DateData;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->dateData:Lorg/telegram/ui/Adapters/FiltersView$DateData;

    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->chat:Lorg/telegram/tgnet/TLObject;

    return-void
.end method
