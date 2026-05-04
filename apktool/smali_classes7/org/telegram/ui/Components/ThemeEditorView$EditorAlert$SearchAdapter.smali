.class public Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private lastSearchId:I

.field private lastSearchText:Ljava/lang/String;

.field private searchNames:Ljava/util/ArrayList;

.field private searchResult:Ljava/util/ArrayList;

.field private searchRunnable:Ljava/lang/Runnable;

.field final synthetic this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;


# direct methods
.method public static synthetic $r8$lambda$eU0IrvMZvDV_uDCnPQsbuSTEvvg(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->lambda$searchDialogs$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oV60268meO8UPrP7cxRR8lNLjbA(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->lambda$updateSearchResults$0(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;)V
    .locals 0

    .line 1123
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 1119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchNames:Ljava/util/ArrayList;

    .line 1124
    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$searchDialogs$1(Ljava/lang/String;I)V
    .locals 0

    .line 1246
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$updateSearchResults$0(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1206
    iget v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 1209
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 1210
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$mgetCurrentTop(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fputtopBeforeSwitch(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;I)V

    .line 1211
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1212
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1214
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v1

    .line 1215
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 1217
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$mgetCurrentTop(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fputtopBeforeSwitch(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;I)V

    .line 1219
    :cond_4
    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 1220
    iput-object p3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchNames:Ljava/util/ArrayList;

    .line 1221
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    .line 1222
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fgettopBeforeSwitch(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result p1

    if-lez p1, :cond_5

    .line 1223
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fgettopBeforeSwitch(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1224
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    const/16 p2, -0x3e8

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fputtopBeforeSwitch(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;I)V

    .line 1226
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fgetsearchEmptyView(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    return-void
.end method

.method private searchDialogsInternal(Ljava/lang/String;I)V
    .locals 12

    .line 1168
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    .line 1170
    iput p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->lastSearchId:I

    .line 1171
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->lastSearchId:I

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 1174
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    add-int/2addr v3, v2

    .line 1178
    new-array v4, v3, [Ljava/lang/String;

    .line 1179
    aput-object p1, v4, v1

    if-eqz v0, :cond_4

    .line 1181
    aput-object v0, v4, v2

    .line 1184
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->-$$Nest$fgetitems(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v1

    :goto_1
    if-ge v5, v2, :cond_7

    .line 1187
    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->-$$Nest$fgetitems(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1188
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/ThemeColors;->getStringName(I)Ljava/lang/String;

    move-result-object v7

    .line 1189
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    move v9, v1

    :goto_2
    if-ge v9, v3, :cond_6

    .line 1190
    aget-object v10, v4, v9

    .line 1191
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1192
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    invoke-virtual {p0, v7, v10}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->generateSearchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1198
    :cond_7
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1200
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 1

    .line 1205
    new-instance v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public generateSearchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8

    .line 1128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    const-string p1, ""

    return-object p1

    .line 1131
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1132
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1133
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 1137
    :goto_0
    invoke-virtual {v1, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 1138
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    if-eqz v3, :cond_1

    add-int/lit8 v6, v4, 0x1

    if-eq v3, v6, :cond_1

    .line 1141
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    if-eqz v4, :cond_2

    .line 1143
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1146
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1147
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1148
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1150
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1152
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1153
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1154
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v7, -0xb27c4d

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    const/16 v7, 0x21

    invoke-virtual {v0, v6, v4, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v3, v5

    goto :goto_0

    :cond_4
    if-eq v3, v5, :cond_5

    .line 1159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v3, p2, :cond_5

    .line 1160
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_5
    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 1

    if-ltz p1, :cond_1

    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1260
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1253
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1287
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_1

    .line 1288
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1289
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1291
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 1294
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getSetColor()I

    move-result v1

    .line 1296
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextColorThemeCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/TextColorThemeCell;->setTextAndColor(Ljava/lang/CharSequence;I)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p1, -0x1

    if-eqz p2, :cond_0

    .line 1278
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1279
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1273
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/TextColorThemeCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextColorThemeCell;-><init>(Landroid/content/Context;)V

    .line 1274
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1231
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1234
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->lastSearchText:Ljava/lang/String;

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1236
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1237
    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    :cond_1
    if-eqz p1, :cond_3

    .line 1239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1245
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->lastSearchId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->lastSearchId:I

    .line 1246
    new-instance v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 1247
    sget-object p1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void

    .line 1240
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1241
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$mgetCurrentTop(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fputtopBeforeSwitch(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;I)V

    const/4 p1, -0x1

    .line 1242
    iput p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->lastSearchId:I

    .line 1243
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
