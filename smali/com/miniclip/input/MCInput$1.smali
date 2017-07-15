.class Lcom/miniclip/input/MCInput$1;
.super Ljava/lang/Object;
.source "MCInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/input/MCInput;->processMotionEvent(Landroid/view/MotionEvent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/input/MCInput;

.field final synthetic val$axis:I

.field final synthetic val$deviceId:I

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcom/miniclip/input/MCInput;IIF)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/input/MCInput;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/miniclip/input/MCInput$1;->this$0:Lcom/miniclip/input/MCInput;

    iput p2, p0, Lcom/miniclip/input/MCInput$1;->val$deviceId:I

    iput p3, p0, Lcom/miniclip/input/MCInput$1;->val$axis:I

    iput p4, p0, Lcom/miniclip/input/MCInput$1;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miniclip/input/MCInput$1;->this$0:Lcom/miniclip/input/MCInput;

    iget v1, p0, Lcom/miniclip/input/MCInput$1;->val$deviceId:I

    iget v2, p0, Lcom/miniclip/input/MCInput$1;->val$axis:I

    iget v3, p0, Lcom/miniclip/input/MCInput$1;->val$value:F

    # invokes: Lcom/miniclip/input/MCInput;->nativeMotionEvent(IIF)V
    invoke-static {v0, v1, v2, v3}, Lcom/miniclip/input/MCInput;->access$000(Lcom/miniclip/input/MCInput;IIF)V

    .line 148
    return-void
.end method
