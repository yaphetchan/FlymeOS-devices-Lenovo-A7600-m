.class public abstract Landroid/telecom/RemoteConference$Callback;
.super Ljava/lang/Object;
.source "RemoteConference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/telecom/RemoteConference;I)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;
    .param p2, "capabilities"    # I

    .prologue
    .line 48
    return-void
.end method

.method public onConferenceableConnectionsChanged(Landroid/telecom/RemoteConference;Ljava/util/List;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/RemoteConference;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    return-void
.end method

.method public onConnectionAdded(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;
    .param p2, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 46
    return-void
.end method

.method public onConnectionRemoved(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;
    .param p2, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 47
    return-void
.end method

.method public onDestroyed(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 52
    return-void
.end method

.method public onDisconnected(Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 45
    return-void
.end method

.method public onStateChanged(Landroid/telecom/RemoteConference;II)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 44
    return-void
.end method