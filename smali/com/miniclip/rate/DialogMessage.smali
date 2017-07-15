.class Lcom/miniclip/rate/DialogMessage;
.super Ljava/lang/Object;
.source "MessageBox.java"


# instance fields
.field public buttonTitles:[Ljava/lang/String;

.field public cancelable:Z

.field public message:Ljava/lang/String;

.field public msgId:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/miniclip/rate/DialogMessage;->msgId:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miniclip/rate/DialogMessage;->cancelable:Z

    .line 39
    iput-object v1, p0, Lcom/miniclip/rate/DialogMessage;->message:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/miniclip/rate/DialogMessage;->title:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/miniclip/rate/DialogMessage;->buttonTitles:[Ljava/lang/String;

    .line 42
    return-void
.end method
