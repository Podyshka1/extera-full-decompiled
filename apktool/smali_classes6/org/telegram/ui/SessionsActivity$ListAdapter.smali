.class Lorg/telegram/ui/SessionsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SessionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/SessionsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 747
    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 748
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 759
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetrowCount(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 7

    const/4 v0, 0x2

    .line 889
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 887
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    .line 885
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 884
    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetterminateAllSessionsRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_0

    .line 885
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v5, p1, v4

    aput-object v5, p1, v2

    invoke-static {p1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 886
    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetterminateAllSessionsDetailRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 887
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v5, p1, v4

    aput-object v3, p1, v2

    invoke-static {p1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 888
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsTerminateDetail(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_2

    .line 889
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v5, p1, v4

    aput-object v1, p1, v2

    invoke-static {p1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 890
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsDetailRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_3

    const/4 p1, 0x3

    .line 891
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 892
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetqrCodeDividerRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_4

    const/4 p1, 0x4

    .line 893
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 894
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlDivideRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_5

    const/4 p1, 0x5

    .line 895
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 896
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetnoOtherSessionsRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_6

    const/4 p1, 0x6

    .line 897
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 898
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetcurrentSessionSectionRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_7

    const/4 p1, 0x7

    .line 899
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 900
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsSectionRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_8

    const/16 p1, 0x8

    .line 901
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 902
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsSectionRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_9

    const/16 p1, 0x9

    .line 903
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 904
    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlHeaderRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_a

    const/16 p1, 0xa

    .line 905
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 906
    :cond_a
    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetcurrentSessionRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_b

    const/16 p1, 0xb

    .line 907
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 908
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsStartRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    if-lt p1, v6, :cond_d

    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsEndRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    if-ge p1, v6, :cond_d

    .line 909
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetsessions(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsStartRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    sub-int/2addr p1, v6

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    .line 910
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    if-eqz v1, :cond_c

    .line 911
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->hash:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 912
    :cond_c
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    if-eqz v1, :cond_11

    .line 913
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->hash:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 915
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsStartRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v3

    if-lt p1, v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsEndRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v3

    if-ge p1, v3, :cond_f

    .line 916
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessions(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v6}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsStartRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v6

    sub-int/2addr p1, v6

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    .line 917
    instance-of v3, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    if-eqz v3, :cond_e

    .line 918
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->hash:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 919
    :cond_e
    instance-of v3, p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    if-eqz v3, :cond_11

    .line 920
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->hash:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 922
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetqrCodeRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_10

    const/16 p1, 0xc

    .line 923
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 924
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_11

    const/16 p1, 0xd

    .line 925
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    :cond_11
    const/4 p1, -0x1

    .line 927
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    aput-object p1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetterminateAllSessionsRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 934
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetterminateAllSessionsDetailRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsTerminateDetail(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsDetailRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetqrCodeDividerRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlDivideRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetnoOtherSessionsRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_2

    .line 936
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetcurrentSessionSectionRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsSectionRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsSectionRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlHeaderRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 938
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetcurrentSessionRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsStartRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsEndRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_7

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsStartRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsEndRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ge p1, v0, :cond_4

    goto :goto_0

    .line 940
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetqrCodeRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x5

    return p1

    .line 942
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    const/4 p1, 0x6

    return p1

    :cond_6
    return v1

    :cond_7
    :goto_0
    const/4 p1, 0x4

    return p1

    :cond_8
    :goto_1
    const/4 p1, 0x2

    return p1

    :cond_9
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 753
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetterminateAllSessionsRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsStartRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsEndRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsStartRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsEndRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetcurrentSessionRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 791
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    if-eq v0, v1, :cond_f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1a

    const/4 v3, 0x6

    if-eq v0, v3, :cond_7

    .line 866
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SessionCell;

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetcurrentSessionRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 868
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetcurrentSession(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/tgnet/TLRPC$TL_authorization;

    move-result-object p2

    if-nez p2, :cond_0

    .line 869
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetglobalFlickerLoadingView(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/SessionCell;->showStub(Lorg/telegram/ui/Components/FlickerLoadingView;)V

    return-void

    .line 871
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetcurrentSession(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/tgnet/TLRPC$TL_authorization;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetsessions(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessions(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetqrCodeRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/SessionCell;->setSession(Lorg/telegram/tgnet/TLObject;Z)V

    return-void

    .line 873
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsStartRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsEndRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 874
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetsessions(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsStartRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsEndRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v3

    sub-int/2addr v3, v1

    if-eq p2, v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/SessionCell;->setSession(Lorg/telegram/tgnet/TLObject;Z)V

    return-void

    .line 875
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsStartRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p2, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsEndRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ge p2, v0, :cond_1a

    .line 876
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessions(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsStartRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsEndRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v3

    sub-int/2addr v3, v1

    if-eq p2, v3, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/SessionCell;->setSession(Lorg/telegram/tgnet/TLObject;Z)V

    return-void

    .line 853
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 855
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlDays(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    const/16 v0, 0x1e

    if-le p2, v0, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlDays(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    const/16 v3, 0xb7

    if-gt p2, v3, :cond_8

    .line 856
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlDays(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    div-int/2addr p2, v0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Months"

    invoke-static {v3, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 857
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlDays(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    const/16 v0, 0x16d

    if-ne p2, v0, :cond_9

    .line 858
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlDays(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    div-int/2addr p2, v0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Years"

    invoke-static {v3, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 860
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlDays(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    div-int/lit8 p2, p2, 0x7

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Weeks"

    invoke-static {v3, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 862
    :goto_3
    sget v0, Lorg/telegram/messenger/R$string;->IfInactiveFor:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 835
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 836
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetcurrentSessionSectionRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_b

    .line 837
    sget p2, Lorg/telegram/messenger/R$string;->CurrentSession:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 838
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsSectionRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_d

    .line 839
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    if-nez p2, :cond_c

    .line 840
    sget p2, Lorg/telegram/messenger/R$string;->OtherSessions:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 842
    :cond_c
    sget p2, Lorg/telegram/messenger/R$string;->OtherWebSessions:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 844
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsSectionRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_e

    .line 845
    sget p2, Lorg/telegram/messenger/R$string;->LoginAttempts:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 846
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlHeaderRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1a

    .line 847
    sget p2, Lorg/telegram/messenger/R$string;->TerminateOldSessionHeader:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 809
    :cond_f
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 810
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetterminateAllSessionsDetailRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_11

    .line 812
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    if-nez p2, :cond_10

    .line 813
    sget p2, Lorg/telegram/messenger/R$string;->ClearOtherSessionsHelp:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 815
    :cond_10
    sget p2, Lorg/telegram/messenger/R$string;->ClearOtherWebSessionsHelp:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 817
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetotherSessionsTerminateDetail(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    const-string v1, ""

    if-ne p2, v0, :cond_14

    .line 818
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    if-nez p2, :cond_13

    .line 819
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetsessions(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 820
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 822
    :cond_12
    sget p2, Lorg/telegram/messenger/R$string;->SessionsListInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 825
    :cond_13
    sget p2, Lorg/telegram/messenger/R$string;->TerminateWebSessionInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 827
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetpasswordSessionsDetailRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_15

    .line 828
    sget p2, Lorg/telegram/messenger/R$string;->LoginAttemptsInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 829
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetqrCodeDividerRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p2, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetttlDivideRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p2, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetnoOtherSessionsRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1a

    .line 830
    :cond_16
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 831
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    return-void

    .line 793
    :cond_17
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetterminateAllSessionsRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_19

    .line 795
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 796
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 797
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    if-nez p2, :cond_18

    .line 798
    sget p2, Lorg/telegram/messenger/R$string;->TerminateAllSessions:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    return-void

    .line 800
    :cond_18
    sget p2, Lorg/telegram/messenger/R$string;->TerminateAllWebSessions:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    return-void

    .line 802
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetqrCodeRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1a

    .line 803
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 804
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 805
    sget p2, Lorg/telegram/messenger/R$string;->AuthAnotherClient:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetsessions(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    :cond_1a
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    .line 783
    new-instance p1, Lorg/telegram/ui/Cells/SessionCell;

    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/SessionCell;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 779
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 776
    :cond_1
    new-instance p1, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;

    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;-><init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V

    goto :goto_0

    .line 773
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 770
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 767
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 786
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
