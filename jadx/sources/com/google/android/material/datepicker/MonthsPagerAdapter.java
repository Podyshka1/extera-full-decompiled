package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C1349R;
import com.google.android.material.datepicker.MaterialCalendar;
import org.mvel2.asm.Opcodes;

/* JADX INFO: loaded from: classes5.dex */
class MonthsPagerAdapter extends RecyclerView.Adapter {
    private static final int POSITION_UNSPECIFIED = 0;
    private final CalendarConstraints calendarConstraints;
    private final DateSelector<?> dateSelector;
    private final DayViewDecorator dayViewDecorator;
    private final int itemHeight;
    private int keyboardFocusDirection = 0;
    private final MaterialCalendar.OnDayClickListener onDayClickListener;
    private final MaterialCalendar.OnMonthNavigationListener onMonthNavigationListener;
    private Month visibleMonth;

    MonthsPagerAdapter(Context context, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator, MaterialCalendar.OnDayClickListener onDayClickListener, MaterialCalendar.OnMonthNavigationListener onMonthNavigationListener) {
        Month start = calendarConstraints.getStart();
        Month end = calendarConstraints.getEnd();
        Month openAt = calendarConstraints.getOpenAt();
        if (start.compareTo(openAt) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (openAt.compareTo(end) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.itemHeight = (MonthAdapter.MAXIMUM_WEEKS * MaterialCalendar.getDayHeight(context)) + (MaterialDatePicker.isFullscreen(context) ? MaterialCalendar.getDayHeight(context) : 0);
        this.calendarConstraints = calendarConstraints;
        this.dateSelector = dateSelector;
        this.dayViewDecorator = dayViewDecorator;
        this.onDayClickListener = onDayClickListener;
        this.onMonthNavigationListener = onMonthNavigationListener;
        this.visibleMonth = openAt;
        setHasStableIds(true);
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        final MaterialCalendarGridView monthGrid;
        final TextView monthTitle;

        ViewHolder(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(C1349R.id.month_title);
            this.monthTitle = textView;
            ViewCompat.setAccessibilityHeading(textView, true);
            this.monthGrid = (MaterialCalendarGridView) linearLayout.findViewById(C1349R.id.month_grid);
            if (z) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(C1349R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (MaterialDatePicker.isFullscreen(viewGroup.getContext())) {
            linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.itemHeight));
            return new ViewHolder(linearLayout, true);
        }
        return new ViewHolder(linearLayout, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        Month monthMonthsLater = this.calendarConstraints.getStart().monthsLater(i);
        viewHolder.monthTitle.setText(monthMonthsLater.getLongName());
        final MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) viewHolder.monthGrid.findViewById(C1349R.id.month_grid);
        if (materialCalendarGridView.getAdapter() != null && monthMonthsLater.equals(materialCalendarGridView.getAdapter().month)) {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter().updateSelectedStates(materialCalendarGridView);
        } else {
            MonthAdapter monthAdapter = new MonthAdapter(monthMonthsLater, this.dateSelector, this.calendarConstraints, this.dayViewDecorator);
            materialCalendarGridView.setNumColumns(monthMonthsLater.daysInWeek);
            materialCalendarGridView.setAdapter((ListAdapter) monthAdapter);
        }
        materialCalendarGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.google.android.material.datepicker.MonthsPagerAdapter.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                if (materialCalendarGridView.getAdapter().withinMonth(i2)) {
                    MonthsPagerAdapter.this.onDayClickListener.onDayClick(materialCalendarGridView.getAdapter().getItem(i2).longValue());
                }
            }
        });
        materialCalendarGridView.setOnMonthNavigationListener(this.onMonthNavigationListener);
        boolean zIsFullscreen = MaterialDatePicker.isFullscreen(viewHolder.itemView.getContext());
        if (zIsFullscreen || monthMonthsLater.equals(this.visibleMonth)) {
            materialCalendarGridView.setFocusable(true);
            materialCalendarGridView.setDescendantFocusability(131072);
        } else {
            materialCalendarGridView.setFocusable(false);
            materialCalendarGridView.setDescendantFocusability(Opcodes.ASM6);
        }
        if (zIsFullscreen || !monthMonthsLater.equals(this.visibleMonth)) {
            return;
        }
        setInitialKeyboardFocus(materialCalendarGridView);
    }

    private void setInitialKeyboardFocus(final MaterialCalendarGridView materialCalendarGridView) {
        final int i = this.keyboardFocusDirection;
        this.keyboardFocusDirection = 0;
        materialCalendarGridView.post(new Runnable() { // from class: com.google.android.material.datepicker.MonthsPagerAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MonthsPagerAdapter.$r8$lambda$E9camo9RH2aGrepzFLssIv_21eo(this.f$0, materialCalendarGridView, i);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$E9camo9RH2aGrepzFLssIv_21eo(MonthsPagerAdapter monthsPagerAdapter, MaterialCalendarGridView materialCalendarGridView, int i) {
        monthsPagerAdapter.getClass();
        if (!materialCalendarGridView.hasFocus() || i == 0) {
            return;
        }
        materialCalendarGridView.setSelection(monthsPagerAdapter.getInitialDayPositionForDirection(materialCalendarGridView.getAdapter(), i));
    }

    private int getInitialDayPositionForDirection(MonthAdapter monthAdapter, int i) {
        if (i == 1) {
            int iFindLastValidDayPosition = monthAdapter.findLastValidDayPosition();
            return iFindLastValidDayPosition == -1 ? monthAdapter.lastPositionInMonth() : iFindLastValidDayPosition;
        }
        int iFindFirstValidDayPosition = monthAdapter.findFirstValidDayPosition();
        return iFindFirstValidDayPosition == -1 ? monthAdapter.firstPositionInMonth() : iFindFirstValidDayPosition;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.calendarConstraints.getStart().monthsLater(i).getStableId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.calendarConstraints.getMonthSpan();
    }

    CharSequence getPageTitle(int i) {
        return getPageMonth(i).getLongName();
    }

    Month getPageMonth(int i) {
        return this.calendarConstraints.getStart().monthsLater(i);
    }

    int getPosition(Month month) {
        return this.calendarConstraints.getStart().monthsUntil(month);
    }

    void setKeyboardFocusDirection(int i) {
        this.keyboardFocusDirection = i;
    }

    void setVisibleMonth(Month month) {
        if (month == null || month.equals(this.visibleMonth)) {
            return;
        }
        int position = getPosition(this.visibleMonth);
        this.visibleMonth = month;
        int position2 = getPosition(month);
        notifyItemChanged(position);
        notifyItemChanged(position2);
    }
}
