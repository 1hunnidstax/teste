.class final Lcom/miniclip/input/MCKeyboard$3;
.super Ljava/lang/Object;
.source "MCKeyboard.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/input/MCKeyboard;->init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 127
    # getter for: Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$000()Lcom/miniclip/framework/MiniclipAndroidActivity;

    move-result-object v0

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/input/MCKeyboard$3$1;

    invoke-direct {v2, p0, p2, p3}, Lcom/miniclip/input/MCKeyboard$3$1;-><init>(Lcom/miniclip/input/MCKeyboard$3;ILandroid/view/KeyEvent;)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 161
    const/4 v0, 0x1

    return v0
.end method
