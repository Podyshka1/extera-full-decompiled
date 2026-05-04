.class Lorg/telegram/ui/ChatUsersActivity$DiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatUsersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiffCallback"
.end annotation


# instance fields
.field newPositionToItem:Landroid/util/SparseIntArray;

.field oldBotEndRow:I

.field oldBotStartRow:I

.field private oldBots:Ljava/util/ArrayList;

.field private oldContacts:Ljava/util/ArrayList;

.field oldContactsEndRow:I

.field oldContactsStartRow:I

.field private oldParticipants:Ljava/util/ArrayList;

.field oldParticipantsEndRow:I

.field oldParticipantsStartRow:I

.field oldPositionToItem:Landroid/util/SparseIntArray;

.field oldRowCount:I

.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;


# direct methods
.method static bridge synthetic -$$Nest$fgetoldBots(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBots:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoldContacts(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoldParticipants(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipants:Ljava/util/ArrayList;

    return-object p0
.end method

.method private constructor <init>(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    .line 3890
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 3893
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    .line 3894
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    .line 3903
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipants:Ljava/util/ArrayList;

    .line 3904
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBots:Ljava/util/ArrayList;

    .line 3905
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContacts:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/ChatUsersActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    return-void
.end method

.method private put(IILandroid/util/SparseIntArray;)V
    .locals 0

    if-ltz p2, :cond_0

    .line 3993
    invoke-virtual {p3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 3931
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->areItemsTheSame(II)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3932
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetrestricted1SectionRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result p1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public areItemsTheSame(II)Z
    .locals 2

    .line 3919
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBotStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBotEndRow:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetbotStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetbotEndRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 3920
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBots:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBotStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetbots(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetbotStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3921
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContactsStartRow:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContactsEndRow:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontactsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontactsEndRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 3922
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContacts:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContactsStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontacts(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontactsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3923
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipantsStartRow:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipantsEndRow:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsEndRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 3924
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipants:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipantsStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipants(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3926
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-ne p1, p2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public fillPositions(Landroid/util/SparseIntArray;)V
    .locals 4

    .line 3941
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 3943
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetrecentActionsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3944
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddNewRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3945
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddNew2Row(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3946
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddNewSectionRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3947
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetrestricted1SectionRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3948
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsDividerRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3949
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsDivider2Row(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3950
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetgigaHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3951
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetgigaConvertRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3952
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetgigaInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3953
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3954
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetblockedEmptyRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3955
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpermissionsSectionRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3956
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3957
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendMediaRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3958
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendStickersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3959
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsendPollsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v1, 0x11

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3960
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetembedLinksRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v1, 0x12

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3961
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetaddUsersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v1, 0x13

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3962
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpinMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v1, 0x14

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3963
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgeteditTagRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v1, 0x15

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3964
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetisForum(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v0

    const/16 v2, 0x16

    if-eqz v0, :cond_0

    .line 3965
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetmanageTopicsRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    move v1, v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 3967
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetchangeInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0x2

    .line 3968
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetremovedUsersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0x3

    .line 3969
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcontactsHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0x4

    .line 3970
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetbotHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0x5

    .line 3971
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetmembersHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0x6

    .line 3972
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetslowmodeRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0x7

    .line 3973
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetslowmodeSelectRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0x8

    .line 3974
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetslowmodeInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0x9

    .line 3975
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdontRestrictBoostersRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0xa

    .line 3976
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdontRestrictBoostersSliderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0xb

    .line 3977
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdontRestrictBoostersInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0xc

    .line 3978
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetloadingProgressRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0xd

    .line 3979
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetloadingUserCellRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0xe

    .line 3980
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetloadingHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0xf

    .line 3981
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsignMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0x10

    .line 3982
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsignMessagesProfilesRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0x11

    .line 3983
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsignMessagesInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0x12

    .line 3984
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpayRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0x13

    .line 3985
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpayInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0x14

    .line 3986
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpriceHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/lit8 v0, v1, 0x15

    .line 3987
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpriceRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-direct {p0, v0, v3, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/2addr v1, v2

    .line 3988
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetpriceInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    return-void
.end method

.method public getNewListSize()I
    .locals 1

    .line 3914
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetrowCount(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 3909
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldRowCount:I

    return v0
.end method
