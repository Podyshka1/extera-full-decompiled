.class Lorg/telegram/ui/GroupCallActivity$65;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;)V
    .locals 0

    .line 9073
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 8

    .line 9087
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetaddMemberRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_3

    .line 9088
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldAddMemberRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetaddMemberRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_0

    return v2

    .line 9090
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldAddMemberRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetaddMemberRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldAddMemberRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetaddMemberRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_3

    :cond_2
    return v1

    .line 9095
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetconferenceAddPeopleRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ltz v0, :cond_7

    .line 9096
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldConferenceAddPeopleRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetconferenceAddPeopleRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_4

    return v2

    .line 9098
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldConferenceAddPeopleRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetconferenceAddPeopleRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldConferenceAddPeopleRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetconferenceAddPeopleRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_7

    :cond_6
    return v1

    .line 9103
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetconferenceShareLinkRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ltz v0, :cond_b

    .line 9104
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldConferenceShareLinkRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetconferenceShareLinkRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_8

    return v2

    .line 9106
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldConferenceShareLinkRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetconferenceShareLinkRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_a

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldConferenceShareLinkRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetconferenceShareLinkRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_b

    :cond_a
    return v1

    .line 9111
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetencryptionRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ltz v0, :cond_f

    .line 9112
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldEncryptionRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetencryptionRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_c

    return v2

    .line 9114
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldEncryptionRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetencryptionRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_e

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldEncryptionRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-eq p1, v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetencryptionRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_f

    :cond_e
    return v1

    .line 9119
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetvideoNotAvailableRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ltz v0, :cond_13

    .line 9120
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldVideoNotAvailableRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetvideoNotAvailableRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_10

    return v2

    .line 9122
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldVideoNotAvailableRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetvideoNotAvailableRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_12

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldVideoNotAvailableRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetvideoNotAvailableRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_13

    :cond_12
    return v1

    .line 9127
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetvideoGridDividerRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ltz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetvideoGridDividerRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ne v0, p2, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldVideoDividerRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ne p1, v0, :cond_14

    return v2

    .line 9130
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldCount(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetrowsCount(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p2, v0, :cond_15

    return v2

    .line 9132
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldCount(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    sub-int/2addr v0, v2

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetrowsCount(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p2, v0, :cond_16

    goto/16 :goto_0

    .line 9135
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetusersVideoGridStartRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-lt p2, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetusersVideoGridEndRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ge p2, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldUsersVideoStartRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-lt p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldUsersVideoEndRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 9137
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldVideoParticipants(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldUsersVideoStartRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    .line 9138
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetusersVideoGridStartRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    .line 9139
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ChatObject$VideoParticipant;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9140
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetusersStartRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-lt p2, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetusersEndRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ge p2, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldUsersStartRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldUsersEndRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ge p1, v0, :cond_1a

    .line 9142
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldParticipants(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldUsersStartRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 9143
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v3, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->visibleParticipants:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetusersStartRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 9144
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_19

    if-eq p1, p2, :cond_18

    iget-wide p1, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastActiveDate:J

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    int-to-long v3, v0

    cmp-long p1, p1, v3

    if-nez p1, :cond_19

    :cond_18
    return v2

    :cond_19
    return v1

    .line 9145
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetinvitedStartRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-lt p2, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetinvitedEndRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ge p2, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldInvitedStartRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldInvitedEndRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ge p1, v0, :cond_1b

    .line 9147
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldInvited(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldInvitedStartRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 9148
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetinvitedStartRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 9149
    invoke-virtual {p1, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9150
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetshadyJoinStartRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-lt p2, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetshadyJoinEndRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ge p2, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldShadyJoinStartRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldShadyJoinEndRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ge p1, v0, :cond_1c

    .line 9152
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldShadyJoin(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldShadyJoinStartRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 9153
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->shadyJoinParticipants:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetshadyJoinStartRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 9154
    invoke-virtual {p1, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9155
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetshadyLeftStartRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-lt p2, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetshadyLeftEndRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    if-ge p2, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldShadyLeftStartRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldShadyLeftEndRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    if-ge p1, v0, :cond_1d

    .line 9157
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldShadyLeft(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldShadyLeftStartRow(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 9158
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->shadyLeftParticipants:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetshadyLeftStartRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 9159
    invoke-virtual {p1, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1d
    :goto_0
    return v1
.end method

.method public getNewListSize()I
    .locals 1

    .line 9082
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetrowsCount(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 9077
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$65;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetoldCount(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    return v0
.end method
