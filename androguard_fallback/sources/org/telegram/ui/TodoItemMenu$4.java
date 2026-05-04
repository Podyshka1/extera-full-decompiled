package org.telegram.ui;
 class TodoItemMenu$4 extends org.telegram.ui.Components.ViewPagerFixed$Adapter {
    final synthetic org.telegram.ui.TodoItemMenu this$0;
    final synthetic android.content.Context val$context;

    public static synthetic void $r8$lambda$nFih3TrkxDvN4TJFSmY9r75S2ME(org.telegram.ui.TodoItemMenu$4 p0, android.view.View p1)
    {
        p0.lambda$createView$0(p1);
        return;
    }

    TodoItemMenu$4(org.telegram.ui.TodoItemMenu p1, android.content.Context p2)
    {
        this.this$0 = p1;
        this.val$context = p2;
        return;
    }

    private synthetic void lambda$createView$0(android.view.View p2)
    {
        this.this$0.dismiss(1);
        return;
    }

    public void bindView(android.view.View p1, int p2, int p3)
    {
        return;
    }

    public android.view.View createView(int p2)
    {
        android.widget.FrameLayout v2_1 = new android.widget.FrameLayout(this.val$context);
        v2_1.setOnClickListener(new org.telegram.ui.TodoItemMenu$4$$ExternalSyntheticLambda0(this));
        return v2_1;
    }

    public int getItemCount()
    {
        return 2;
    }
}
