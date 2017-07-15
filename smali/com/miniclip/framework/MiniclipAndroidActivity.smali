.class public abstract Lcom/miniclip/framework/MiniclipAndroidActivity;
.super Lcom/miniclip/framework/MiniclipBaseActivity;
.source "MiniclipAndroidActivity.java"


# static fields
.field private static final REVERSE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private inputHandlers:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/miniclip/framework/InputHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/miniclip/framework/MiniclipAndroidActivity$1;

    invoke-direct {v0}, Lcom/miniclip/framework/MiniclipAndroidActivity$1;-><init>()V

    sput-object v0, Lcom/miniclip/framework/MiniclipAndroidActivity;->REVERSE_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miniclip/framework/MiniclipBaseActivity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lcom/miniclip/framework/MiniclipAndroidActivity;->REVERSE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/miniclip/framework/MiniclipAndroidActivity;->inputHandlers:Ljava/util/SortedMap;

    return-void
.end method


# virtual methods
.method public addInputHandler(Lcom/miniclip/framework/InputHandler;I)Z
    .locals 4
    .param p1, "handler"    # Lcom/miniclip/framework/InputHandler;
    .param p2, "priority"    # I

    .prologue
    .line 86
    iget-object v1, p0, Lcom/miniclip/framework/MiniclipAndroidActivity;->inputHandlers:Ljava/util/SortedMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/miniclip/framework/MiniclipAndroidActivity;->inputHandlers:Ljava/util/SortedMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/miniclip/framework/MiniclipAndroidActivity;->inputHandlers:Ljava/util/SortedMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    .line 90
    .local v0, "priorityHandlers":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/miniclip/framework/InputHandler;>;"
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getMainLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 70
    .local v0, "isDebuggable":Z
    :goto_0
    invoke-super {p0, p1}, Lcom/miniclip/framework/MiniclipBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Lcom/miniclip/platform/MCViewManager;->init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V

    .line 72
    invoke-static {p0}, Lcom/miniclip/audio/MCAudio;->init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V

    .line 73
    invoke-static {p0}, Lcom/miniclip/input/MCAccelerometer;->init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V

    .line 74
    invoke-static {p0}, Lcom/miniclip/input/MCInput;->init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V

    .line 75
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->init()V

    .line 76
    invoke-static {p0}, Lcom/miniclip/platform/MCAssetManager;->init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V

    .line 77
    return-void

    .line 36
    .end local v0    # "isDebuggable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 110
    iget-object v2, p0, Lcom/miniclip/framework/MiniclipAndroidActivity;->inputHandlers:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashSet;

    .line 111
    .local v1, "priorityInputHandlers":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/miniclip/framework/InputHandler;>;"
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/InputHandler;

    .line 112
    .local v0, "handler":Lcom/miniclip/framework/InputHandler;
    invoke-interface {v0, p1}, Lcom/miniclip/framework/InputHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    .end local v0    # "handler":Lcom/miniclip/framework/InputHandler;
    .end local v1    # "priorityInputHandlers":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/miniclip/framework/InputHandler;>;"
    :cond_2
    return v5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 121
    sparse-switch p1, :sswitch_data_0

    .line 129
    iget-object v3, p0, Lcom/miniclip/framework/MiniclipAndroidActivity;->inputHandlers:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashSet;

    .line 130
    .local v1, "priorityInputHandlers":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/miniclip/framework/InputHandler;>;"
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/InputHandler;

    .line 131
    .local v0, "handler":Lcom/miniclip/framework/InputHandler;
    invoke-interface {v0, p1, p2}, Lcom/miniclip/framework/InputHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 135
    .end local v0    # "handler":Lcom/miniclip/framework/InputHandler;
    .end local v1    # "priorityInputHandlers":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/miniclip/framework/InputHandler;>;"
    :cond_2
    :goto_0
    return v2

    .line 126
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/miniclip/framework/MiniclipBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 140
    sparse-switch p1, :sswitch_data_0

    .line 148
    iget-object v3, p0, Lcom/miniclip/framework/MiniclipAndroidActivity;->inputHandlers:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashSet;

    .line 149
    .local v1, "priorityInputHandlers":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/miniclip/framework/InputHandler;>;"
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/InputHandler;

    .line 150
    .local v0, "handler":Lcom/miniclip/framework/InputHandler;
    invoke-interface {v0, p1, p2}, Lcom/miniclip/framework/InputHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    .end local v0    # "handler":Lcom/miniclip/framework/InputHandler;
    .end local v1    # "priorityInputHandlers":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/miniclip/framework/InputHandler;>;"
    :cond_2
    :goto_0
    return v2

    .line 145
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/miniclip/framework/MiniclipBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 140
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "thread"    # Lcom/miniclip/framework/ThreadingContext;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 164
    sget-object v0, Lcom/miniclip/framework/MiniclipAndroidActivity$3;->$SwitchMap$com$miniclip$framework$ThreadingContext:[I

    invoke-virtual {p1}, Lcom/miniclip/framework/ThreadingContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 167
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 171
    :pswitch_1
    invoke-static {p2}, Lcom/miniclip/platform/MCViewManager;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public removeInputHandler(Lcom/miniclip/framework/InputHandler;)Z
    .locals 3
    .param p1, "handler"    # Lcom/miniclip/framework/InputHandler;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/miniclip/framework/MiniclipAndroidActivity;->inputHandlers:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    .line 99
    .local v0, "priorityInputHandlers":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/miniclip/framework/InputHandler;>;"
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const/4 v1, 0x1

    .line 102
    .end local v0    # "priorityInputHandlers":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/miniclip/framework/InputHandler;>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
