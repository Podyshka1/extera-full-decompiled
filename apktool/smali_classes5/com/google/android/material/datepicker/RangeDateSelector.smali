.class public Lcom/google/android/material/datepicker/RangeDateSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/datepicker/DateSelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/datepicker/DateSelector<",
        "Landroidx/core/util/Pair;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/RangeDateSelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private error:Ljava/lang/CharSequence;

.field private final invalidRangeEndError:Ljava/lang/String;

.field private invalidRangeStartError:Ljava/lang/String;

.field private proposedTextEnd:Ljava/lang/Long;

.field private proposedTextStart:Ljava/lang/Long;

.field private selectedEndItem:Ljava/lang/Long;

.field private selectedStartItem:Ljava/lang/Long;

.field private textInputFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 349
    new-instance v0, Lcom/google/android/material/datepicker/RangeDateSelector$3;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/RangeDateSelector$3;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/RangeDateSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, " "

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->invalidRangeEndError:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    .line 61
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    .line 62
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    .line 63
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/RangeDateSelector;->updateIfValidTextProposal(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    return-object p1
.end method

.method private clearInvalidRange(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3

    .line 333
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->invalidRangeStartError:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 336
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, " "

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 337
    invoke-virtual {p2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private isValidRange(JJ)Z
    .locals 0

    cmp-long p1, p1, p3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setInvalidRange(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->invalidRangeStartError:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 343
    const-string p1, " "

    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateError(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    .line 323
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->error:Ljava/lang/CharSequence;

    return-void

    .line 325
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 326
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->error:Ljava/lang/CharSequence;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 328
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->error:Ljava/lang/CharSequence;

    return-void
.end method

.method private updateIfValidTextProposal(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
            "Landroidx/core/util/Pair;",
            ">;)V"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    if-nez v1, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/datepicker/RangeDateSelector;->isValidRange(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    .line 313
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    .line 314
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/RangeDateSelector;->getSelection()Landroidx/core/util/Pair;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/datepicker/OnSelectionChangedListener;->onSelectionChanged(Ljava/lang/Object;)V

    goto :goto_1

    .line 316
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/RangeDateSelector;->setInvalidRange(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 317
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/OnSelectionChangedListener;->onIncompleteSelectionChanged()V

    goto :goto_1

    .line 309
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/RangeDateSelector;->clearInvalidRange(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 310
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/OnSelectionChangedListener;->onIncompleteSelectionChanged()V

    .line 319
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/RangeDateSelector;->updateError(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultThemeResId(Landroid/content/Context;)I
    .locals 3

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 129
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_maximum_default_fullscreen_minor_axis:I

    .line 130
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 131
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v1, v0, :cond_0

    .line 134
    sget v0, Lcom/google/android/material/R$attr;->materialCalendarTheme:I

    goto :goto_0

    .line 135
    :cond_0
    sget v0, Lcom/google/android/material/R$attr;->materialCalendarFullscreenTheme:I

    .line 136
    :goto_0
    const-class v1, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 137
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getDefaultTitleResId()I
    .locals 1

    .line 191
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_range_header_title:I

    return v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->error:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->error:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDays()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getSelectedRanges()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/core/util/Pair;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance v1, Landroidx/core/util/Pair;

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    invoke-direct {v1, v2, v3}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getSelection()Landroidx/core/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair;"
        }
    .end annotation

    .line 100
    new-instance v0, Landroidx/core/util/Pair;

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic getSelection()Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/RangeDateSelector;->getSelection()Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    .line 170
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateStrings;->getDateRangeString(Ljava/lang/Long;Ljava/lang/Long;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 172
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 173
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_announce_current_selection_none:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 174
    :cond_0
    check-cast v1, Ljava/lang/String;

    .line 176
    :goto_0
    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 177
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_announce_current_selection_none:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 178
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 179
    :goto_1
    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_announce_current_range_selection:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSelectionDisplayString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 145
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_range_header_unselected:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 148
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_range_header_only_start_selected:I

    .line 150
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(J)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 148
    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    .line 153
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_range_header_only_end_selected:I

    .line 155
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(J)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 153
    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 158
    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateStrings;->getDateRangeString(Ljava/lang/Long;Ljava/lang/Long;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 159
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_range_header_selected:I

    iget-object v4, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    aput-object v0, v5, v3

    invoke-virtual {p1, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isSelectionComplete()Z
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/datepicker/RangeDateSelector;->isValidRange(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateTextInputView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Landroid/view/View;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
            "Landroidx/core/util/Pair;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 210
    sget v0, Lcom/google/android/material/R$layout;->mtrl_picker_text_input_date_range:I

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 213
    sget v0, Lcom/google/android/material/R$id;->mtrl_picker_text_input_range_start:I

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    .line 215
    sget v0, Lcom/google/android/material/R$id;->mtrl_picker_text_input_range_end:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    .line 216
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 217
    invoke-virtual {v9}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v11

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$attr;->colorOnSurfaceVariant:I

    invoke-static {v2, v3}, Lcom/google/android/material/color/MaterialColors;->getColorOrNull(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 222
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 224
    :cond_0
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isDateInputKeyboardMissingSeparatorCharacters()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    .line 226
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 227
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 230
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$string;->mtrl_picker_invalid_range:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->invalidRangeStartError:Ljava/lang/String;

    .line 232
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->textInputFormat:Ljava/text/SimpleDateFormat;

    const/4 v12, 0x1

    if-eqz v2, :cond_2

    move v3, v12

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    :goto_1
    move-object v5, v2

    goto :goto_2

    .line 234
    :cond_3
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getDefaultTextInputFormat()Ljava/text/SimpleDateFormat;

    move-result-object v2

    goto :goto_1

    .line 236
    :goto_2
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 237
    invoke-virtual {v5, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    iput-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextStart:Ljava/lang/Long;

    .line 240
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 242
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 245
    :cond_4
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 246
    invoke-virtual {v5, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    iput-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->proposedTextEnd:Ljava/lang/Long;

    :cond_5
    if-eqz v3, :cond_6

    .line 252
    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v4, v2

    goto :goto_4

    .line 253
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/google/android/material/datepicker/UtcDates;->getDefaultTextInputHint(Landroid/content/res/Resources;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 255
    :goto_4
    invoke-static {v4}, Lcom/google/android/material/datepicker/UtcDates;->getVerbatimTextInputHint(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    .line 257
    invoke-virtual {v6, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {v9, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 260
    new-instance v2, Lcom/google/android/material/datepicker/RangeDateSelector$1;

    move-object v8, v6

    move-object v3, p0

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/google/android/material/datepicker/RangeDateSelector$1;-><init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 276
    new-instance v2, Lcom/google/android/material/datepicker/RangeDateSelector$2;

    move-object v6, v9

    invoke-direct/range {v2 .. v10}, Lcom/google/android/material/datepicker/RangeDateSelector$2;-><init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/datepicker/DateSelector$-CC;->isTouchExplorationEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x2

    .line 294
    new-array v2, v2, [Landroid/widget/EditText;

    aput-object v0, v2, v1

    aput-object v11, v2, v12

    invoke-static {v2}, Lcom/google/android/material/datepicker/DateSelector$-CC;->showKeyboardWithAutoHideBehavior([Landroid/widget/EditText;)V

    :cond_7
    return-object p1
.end method

.method public select(J)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 70
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/material/datepicker/RangeDateSelector;->isValidRange(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    .line 75
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    return-void
.end method

.method public setSelection(Landroidx/core/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pair;",
            ")V"
        }
    .end annotation

    .line 88
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/datepicker/RangeDateSelector;->isValidRange(JJ)Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 92
    :cond_0
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    .line 94
    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    return-void
.end method

.method public bridge synthetic setSelection(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Landroidx/core/util/Pair;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/RangeDateSelector;->setSelection(Landroidx/core/util/Pair;)V

    return-void
.end method

.method public setTextInputFormat(Ljava/text/SimpleDateFormat;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 197
    invoke-static {p1}, Lcom/google/android/material/datepicker/UtcDates;->getNormalizedFormat(Ljava/text/DateFormat;)Ljava/text/DateFormat;

    move-result-object p1

    check-cast p1, Ljava/text/SimpleDateFormat;

    .line 200
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->textInputFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 375
    iget-object p2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedStartItem:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 376
    iget-object p2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->selectedEndItem:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
