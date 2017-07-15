.class Lcom/miniclip/nativeJNI/DialogMessage;
.super Ljava/lang/Object;
.source "cocojava.java"


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

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcom/miniclip/nativeJNI/DialogMessage;->msgId:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miniclip/nativeJNI/DialogMessage;->cancelable:Z

    .line 85
    iput-object v1, p0, Lcom/miniclip/nativeJNI/DialogMessage;->message:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/miniclip/nativeJNI/DialogMessage;->title:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/miniclip/nativeJNI/DialogMessage;->buttonTitles:[Ljava/lang/String;

    .line 88
    return-void
.end method
