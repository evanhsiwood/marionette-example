module.exports = React.createClass({
    getDefaultProps: function () {
        return {
            data: {
                color: null,
                value: null
            },
            onSelect: null
        };
    },

    getInitialState: function () {
        return {
            selected: false
        };
    },

    __onClick: function () {
        this.setState({
            selected: !this.state.selected
        }, function () {
            if (this.state.selected && this.props.onSelect) {
                this.props.onSelect(this.props.data);
            }
        });
    },

    render: function () {
        var divStyle = {
            backgroundColor: this.props.data.value
        };

        return (
            <div className={"box " + (this.state.selected ? "selected" : "unselected")}
                onClick={this.__onClick}
                style={divStyle}>
                {this.props.data.color}
            </div>
        )
    }
});