.class public enum Lcom/vungle/publisher/tl;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/tl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/tl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/tl;

.field public static final enum b:Lcom/vungle/publisher/tl;

.field public static final enum c:Lcom/vungle/publisher/tl;

.field public static final enum d:Lcom/vungle/publisher/tl;

.field public static final enum e:Lcom/vungle/publisher/tl;

.field public static final enum f:Lcom/vungle/publisher/tl;

.field public static final enum g:Lcom/vungle/publisher/tl;

.field public static final enum h:Lcom/vungle/publisher/tl;

.field public static final enum i:Lcom/vungle/publisher/tl;

.field public static final enum j:Lcom/vungle/publisher/tl;

.field public static final enum k:Lcom/vungle/publisher/tl;

.field public static final enum l:Lcom/vungle/publisher/tl;

.field public static final enum m:Lcom/vungle/publisher/tl;

.field public static final enum n:Lcom/vungle/publisher/tl;

.field public static final enum o:Lcom/vungle/publisher/tl;

.field public static final enum p:Lcom/vungle/publisher/tl;

.field public static final enum q:Lcom/vungle/publisher/tl;

.field public static final enum r:Lcom/vungle/publisher/tl;

.field public static final enum s:Lcom/vungle/publisher/tl;

.field public static final enum t:Lcom/vungle/publisher/tl;

.field private static final synthetic v:[Lcom/vungle/publisher/tl;


# instance fields
.field private final u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/16 v7, 0x9

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/vungle/publisher/tl;

    const-string v1, "CLOSE"

    const-string v2, "close"

    invoke-direct {v0, v1, v4, v2}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->a:Lcom/vungle/publisher/tl;

    .line 8
    new-instance v0, Lcom/vungle/publisher/tl$1;

    const-string v1, "EXPAND"

    const-string v2, "expand"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/tl$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->b:Lcom/vungle/publisher/tl;

    .line 14
    new-instance v0, Lcom/vungle/publisher/tl;

    const-string v1, "USE_CUSTOM_CLOSE"

    const-string v2, "useCustomClose"

    invoke-direct {v0, v1, v5, v2}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->c:Lcom/vungle/publisher/tl;

    .line 15
    new-instance v0, Lcom/vungle/publisher/tl$2;

    const-string v1, "OPEN"

    const-string v2, "open"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/tl$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->d:Lcom/vungle/publisher/tl;

    .line 21
    new-instance v0, Lcom/vungle/publisher/tl$3;

    const-string v1, "RESIZE"

    const-string v2, "resize"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/tl$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->e:Lcom/vungle/publisher/tl;

    .line 27
    new-instance v0, Lcom/vungle/publisher/tl;

    const-string v1, "SET_ORIENTATION_PROPERTIES"

    const-string v2, "setOrientationProperties"

    invoke-direct {v0, v1, v6, v2}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->f:Lcom/vungle/publisher/tl;

    .line 28
    new-instance v0, Lcom/vungle/publisher/tl$4;

    const-string v1, "PLAY_VIDEO"

    const-string v2, "playVideo"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/tl$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->g:Lcom/vungle/publisher/tl;

    .line 34
    new-instance v0, Lcom/vungle/publisher/tl$5;

    const-string v1, "STORE_PICTURE"

    const-string v2, "storePicture"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/tl$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->h:Lcom/vungle/publisher/tl;

    .line 40
    new-instance v0, Lcom/vungle/publisher/tl$6;

    const-string v1, "CREATE_CALENDAR_EVENT"

    const-string v2, "createCalendarEvent"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/tl$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->i:Lcom/vungle/publisher/tl;

    .line 46
    new-instance v0, Lcom/vungle/publisher/tl;

    const-string v1, "PROPERTIES_SET"

    const-string v2, "propertiesChangeCompleted"

    invoke-direct {v0, v1, v7, v2}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->j:Lcom/vungle/publisher/tl;

    .line 47
    new-instance v0, Lcom/vungle/publisher/tl;

    const-string v1, "SUCCESSFUL_VIEW_EVENT"

    const-string v2, "successfulView"

    invoke-direct {v0, v1, v8, v2}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->k:Lcom/vungle/publisher/tl;

    .line 49
    new-instance v0, Lcom/vungle/publisher/tl;

    const-string v1, "TPAT_EVENT"

    const/16 v2, 0xb

    const-string v3, "tpat"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->l:Lcom/vungle/publisher/tl;

    .line 50
    new-instance v0, Lcom/vungle/publisher/tl;

    const-string v1, "USER_ACTION_EVENT"

    const/16 v2, 0xc

    const-string v3, "action"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->m:Lcom/vungle/publisher/tl;

    .line 51
    new-instance v0, Lcom/vungle/publisher/tl;

    const-string v1, "USER_VALUE_ACTION_EVENT"

    const/16 v2, 0xd

    const-string v3, "actionWithValue"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->n:Lcom/vungle/publisher/tl;

    .line 52
    new-instance v0, Lcom/vungle/publisher/tl;

    const-string v1, "ERROR_EVENT"

    const/16 v2, 0xe

    const-string v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->o:Lcom/vungle/publisher/tl;

    .line 53
    new-instance v0, Lcom/vungle/publisher/tl;

    const-string v1, "PRIVACY_PAGE_EVENT"

    const/16 v2, 0xf

    const-string v3, "openPrivacy"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->p:Lcom/vungle/publisher/tl;

    .line 54
    new-instance v0, Lcom/vungle/publisher/tl;

    const-string v1, "PLAY_HTML_VIDEO_EVENT"

    const/16 v2, 0x10

    const-string v3, "playHTML5Video"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->q:Lcom/vungle/publisher/tl;

    .line 55
    new-instance v0, Lcom/vungle/publisher/tl;

    const-string v1, "USE_CUSTOM_PRIVACY"

    const/16 v2, 0x11

    const-string v3, "useCustomPrivacy"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->r:Lcom/vungle/publisher/tl;

    .line 56
    new-instance v0, Lcom/vungle/publisher/tl;

    const-string v1, "THROW_INCENTIVIZED_DIALOG"

    const/16 v2, 0x12

    const-string v3, "throwIncentivizedDialog"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->s:Lcom/vungle/publisher/tl;

    .line 57
    new-instance v0, Lcom/vungle/publisher/tl;

    const-string v1, "UNSPECIFIED"

    const/16 v2, 0x13

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/tl;->t:Lcom/vungle/publisher/tl;

    .line 6
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/vungle/publisher/tl;

    sget-object v1, Lcom/vungle/publisher/tl;->a:Lcom/vungle/publisher/tl;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    sget-object v2, Lcom/vungle/publisher/tl;->b:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    sget-object v1, Lcom/vungle/publisher/tl;->c:Lcom/vungle/publisher/tl;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/vungle/publisher/tl;->d:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/vungle/publisher/tl;->e:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    sget-object v1, Lcom/vungle/publisher/tl;->f:Lcom/vungle/publisher/tl;

    aput-object v1, v0, v6

    const/4 v1, 0x6

    sget-object v2, Lcom/vungle/publisher/tl;->g:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vungle/publisher/tl;->h:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vungle/publisher/tl;->i:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    sget-object v1, Lcom/vungle/publisher/tl;->j:Lcom/vungle/publisher/tl;

    aput-object v1, v0, v7

    sget-object v1, Lcom/vungle/publisher/tl;->k:Lcom/vungle/publisher/tl;

    aput-object v1, v0, v8

    const/16 v1, 0xb

    sget-object v2, Lcom/vungle/publisher/tl;->l:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/vungle/publisher/tl;->m:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/vungle/publisher/tl;->n:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/vungle/publisher/tl;->o:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/vungle/publisher/tl;->p:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/vungle/publisher/tl;->q:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/vungle/publisher/tl;->r:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/vungle/publisher/tl;->s:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/vungle/publisher/tl;->t:Lcom/vungle/publisher/tl;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/tl;->v:[Lcom/vungle/publisher/tl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-object p3, p0, Lcom/vungle/publisher/tl;->u:Ljava/lang/String;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;B)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/tl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/tl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/vungle/publisher/tl;->u:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/tl;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/vungle/publisher/tl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/tl;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/tl;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/vungle/publisher/tl;->v:[Lcom/vungle/publisher/tl;

    invoke-virtual {v0}, [Lcom/vungle/publisher/tl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/tl;

    return-object v0
.end method
