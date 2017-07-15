.class final Lcom/miniclip/input/MCKeyboard$11;
.super Ljava/lang/Object;
.source "MCKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/input/MCKeyboard;->setKeyboardInputVisibleDelayed(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$visible:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 326
    iput p1, p0, Lcom/miniclip/input/MCKeyboard$11;->val$visible:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/miniclip/input/MCKeyboard$11;->val$visible:I

    invoke-static {v0}, Lcom/miniclip/input/MCKeyboard;->setKeyboardInputVisible(I)V

    .line 330
    return-void
.end method
