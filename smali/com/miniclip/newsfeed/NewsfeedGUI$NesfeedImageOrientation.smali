.class public final enum Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;
.super Ljava/lang/Enum;
.source "NewsfeedGUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/newsfeed/NewsfeedGUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NesfeedImageOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;

.field public static final enum LANDSCAPE:Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;

.field public static final enum PORTRAIT:Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 783
    new-instance v0, Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v2}, Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;->PORTRAIT:Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;

    new-instance v0, Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3}, Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;->LANDSCAPE:Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;

    sget-object v1, Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;->PORTRAIT:Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;->LANDSCAPE:Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;->$VALUES:[Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 783
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 783
    const-class v0, Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;

    return-object v0
.end method

.method public static values()[Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;
    .locals 1

    .prologue
    .line 783
    sget-object v0, Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;->$VALUES:[Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;

    invoke-virtual {v0}, [Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miniclip/newsfeed/NewsfeedGUI$NesfeedImageOrientation;

    return-object v0
.end method
