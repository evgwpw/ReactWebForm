import * as React from 'react'
import * as ReactDOM from 'react-dom';
import { createRoot } from 'react-dom/client';

type EvProp =
    {
        id: number,
        fio: string
    };

class EvComp extends React.Component<EvProp>
{
    render() {
        return (
            <div>
                {this.props.id} = {this.props.fio}
            </div>
            );
    }
}

export function RenderEvComp(elId: string, prp: EvProp) { 
    var container = document.getElementById(elId);
    var root = createRoot(container);
    root.render(<EvComp id={prp.id} fio={prp.fio}></EvComp>);
}

export default EvComp;